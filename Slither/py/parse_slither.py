import json, os

repo_contract_path = "https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/"
fn = os.path.join("Slither", "results", "slither.results.json")

impacts = (
    "High",
    "Medium",
    "Low",
    "Optimization"
)

omit_keys = ("elements", "markdown", "id", "first_markdown_element")

omit_checks = (
    "uninitialized-local", 
    "uninitialized-state"
    )

omit_folders = ("test", "script")

stars = "*" * 80
with open(fn) as f:
    results = json.load(f)["results"]["detectors"]

markdown_data = {

}

check_template = """
## Severity

**Impact:** {}

**Likelihood:** {}

## Description

 {}

## Example / POC

## Recommendations

---
"""

items_count = {
    "High": 0,
    "Medium": 0,
    "Low": 0,
    "Optimization": 0
}

for check in results:
    if (
        check.get("impact") in impacts
        and not check["elements"][0]["source_mapping"]["filename_relative"].startswith(
            omit_folders
        )
        and check["check"] not in omit_checks
    ):
        items_count[check['impact']] += 1 
        
        try:
            markdown_data[check["check"]].append(check_template.format(check['impact'], check['confidence'], check['markdown']))
        except KeyError:
            markdown_data[check["check"]] = [check_template.format(check['impact'], check['confidence'], check['markdown'].replace("contracts/", repo_contract_path))]
        
        print(
            f"{stars}\n\n>>> {check['elements'][0]['source_mapping']['filename_relative']}\n"
        )
        
        for k, v in check.items():            
            if k not in omit_keys:
                print(f"{k}\n\t{v}\n")
                
header = f"""
# MAD NFTs Audit - Slither

# Severity classification

| Severity               | Impact: High | Impact: Medium | Impact: Low |
| ---------------------- | ------------ | -------------- | ----------- |
| **Likelihood: High**   | Critical     | High           | Medium      |
| **Likelihood: Medium** | High         | Medium         | Low         |
| **Likelihood: Low**    | Medium       | Low            | Low         |

The following number of issues were found, categorized by their severity:

- Critical 
- High: {items_count["High"]} issues
- Medium: {items_count["Medium"]} issues
- Low: {items_count["Low"]} issues
- Optimization: {items_count["Optimization"]} issues

"""


with open("Slither/results/slitherResults.MD", "w") as f:
    f.write(header)
    for checkType, items in markdown_data.items():
        summary = f"# {checkType}\n\n> Items Found: {len(items)}\n"
        for i, item in enumerate(items):
            summary += f"\n_Item {i+1} / {len(items)}_\n{item}"
        f.write(summary)


