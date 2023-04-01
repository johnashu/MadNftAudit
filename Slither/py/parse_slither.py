import json, os

fn = os.path.join("auditFiles", "slither.results.json")

impacts = (
    "High",
    # "Medium",
    # "Low",
    # "Optimization"
)

omit_keys = ("elements", "markdown", "id", "first_markdown_element")

omit_checks = ("uninitialized-local", "uninitialized-state")

omit_folders = ("test", "lib", "script")

stars = "*" * 80
with open(fn) as f:
    results = json.load(f)["results"]["printers"][-1]["additional_fields"]["detectors"]


for check in results:
    if (
        check.get("impact") in impacts
        and not check["elements"][0]["source_mapping"]["filename_relative"].startswith(
            omit_folders
        )
        and check["check"] not in omit_checks
    ):
        print(
            f"{stars}\n\n>>> {check['elements'][0]['source_mapping']['filename_relative']}\n"
        )
        for k, v in check.items():
            if k not in omit_keys:
                print(f"{k}\n\t{v}\n")
