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

for check in results:
    if (
        check.get("impact") in impacts
        and not check["elements"][0]["source_mapping"]["filename_relative"].startswith(
            omit_folders
        )
        and check["check"] not in omit_checks
    ):
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
                

with open("Slither/results/slitherResults.MD", "w") as f:
    for checkType, items in markdown_data.items():
        summary = f"# {checkType}"
        for i, item in enumerate(items):
            summary += f"\n**Item: {i+1}**\n{item}"
        f.write(summary)


