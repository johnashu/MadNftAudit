import os
import json
from pathlib import Path
from typing import List
from constants import (
    RUNS_SAVE_PATH,
    IGNORED_DIR,
    SOLC_REMAPPINGS_PATH,
    RECURSION_DEPTH,
    SOLC_JSON_PATH,
    TX_COUNT,
    OUT,
    EXECUTION_TIMEOUT,
    SOLVER_TIMEOUT,
    WITH_DOCKER,
)


def find_unlisted_contracts(
    contracts_list: List[str], contracts_folder: str
) -> List[str]:
    contracts_folder = Path(contracts_folder)
    unlisted_paths = []

    for file_path in contracts_folder.rglob("*.sol"):
        formatted_path = str(file_path).replace("\\", "/")
        print(formatted_path)

        if formatted_path.startswith(IGNORED_DIR):
            continue

        if formatted_path not in contracts_list:
            unlisted_paths.append(formatted_path)

    return unlisted_paths


def generate_remappings(folder: str) -> None:
    remappings = {"remappings": []}

    for i in find_unlisted_contracts([], folder):
        path_only = "".join(i.split("/")[:-1])
        new = f"{path_only}=/tmp/{path_only}"
        if new not in remappings["remappings"]:
            remappings["remappings"].append(new)

    with open(SOLC_REMAPPINGS_PATH, "w") as outfile:
        json.dump(remappings, outfile, indent=4)


def generate_script(folder: str) -> None:
    scripts = []

    for i in find_unlisted_contracts([], folder):
        if i not in scripts:
            scripts.append(
                f"{WITH_DOCKER}myth analyze /tmp/{i} -t {TX_COUNT}  -o {OUT} --max-depth {RECURSION_DEPTH} --solc-json {SOLC_JSON_PATH} --execution-timeout {EXECUTION_TIMEOUT} --solver-timeout {SOLVER_TIMEOUT}"
            )

    with open(RUNS_SAVE_PATH, "w") as file:
        for x in scripts:
            file.write(f"{x}\n")


if __name__ == "__main__":
    generate_remappings("contracts")
    generate_script("contracts")
