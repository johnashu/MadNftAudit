import json, os
import glob
from templates import base_template, check_template, checks_header, issues_found

repo_contract_path = "https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/"
fn = os.path.join("Slither", "results", "slither.results.json")

outFile = "Slither/results/slitherResults.MD"

impacts = ("High", "Medium", "Low", "Optimization")

omit_keys = ("elements", "markdown", "id", "first_markdown_element")

omit_checks = (
    # "uninitialized-local", 
    # "uninitialized-state"
    )

omit_folders = ("test", "script")

stars = "*" * 80
with open(fn) as f:
    # Results without using any printers. 
    results = json.load(f)["results"]["detectors"]

markdown_data = {}

items_count = {"High": 0, "Medium": 0, "Low": 0, "Optimization": 0}

for check in results:
    if (
        check.get("impact") in impacts
        and not check["elements"][0]["source_mapping"]["filename_relative"].startswith(
            omit_folders
        )
        and check["check"] not in omit_checks
    ):
        items_count[check["impact"]] += 1

        try:
            markdown_data[check["check"]].append(
                check_template.format(
                    check["impact"],
                    check["confidence"],
                    check["markdown"].replace("auditFiles/madnfts-solidity-contracts/contracts/", repo_contract_path),
                )
            )
        except KeyError:
            markdown_data[check["check"]] = [
                check_template.format(
                    check["impact"],
                    check["confidence"],
                    check["markdown"].replace("auditFiles/madnfts-solidity-contracts/contracts/", repo_contract_path),
                )
            ]

        print(
            f"{stars}\n\n>>> {check['elements'][0]['source_mapping']['filename_relative']}\n"
        )

        for k, v in check.items():
            if k not in omit_keys:
                print(f"{k}\n\t{v}\n")

header = base_template + issues_found.format(
    items_count["High"],
    items_count["Medium"],
    items_count["Low"],
    items_count["Optimization"],
)


def get_erc_checks() -> str:
    check_str = ""
    for check in glob.glob("Slither/results/erc-checker/*.MD"):
        with open(check, "r") as f:
            check_str += f"\n{f.read()}"
    return check_str


with open(outFile, "w") as f:
    f.write(header)
    for checkType, items in markdown_data.items():
        summary = f"# {checkType}\n\n> Items Found: {len(items)}\n"
        for i, item in enumerate(items):
            summary += f"\n_Item {i+1} / {len(items)}_\n{item}"
        f.write(summary)
    f.write(checks_header + get_erc_checks())
