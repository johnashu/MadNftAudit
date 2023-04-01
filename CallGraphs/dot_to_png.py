import pathlib
import os

from graphviz import render

pth = os.path.join("CallGraphs", 'dotFiles')
img_dir = os.path.join('CallGraphs', "images")

def convert_all() -> None:    
    for fileref in pathlib.Path(pth).glob('**/*.dot'):
        filename = str(fileref)
        # Skip 'All' as file size it too large to render - use 'real' graphviz if required.
        if filename.endswith(".all_contracts.call-graph.dot"):
            continue       
        print(filename)
        
        img_fn = filename.split('\\')[-1][:-4]
        render('dot','png', filename, outfile=os.path.join(img_dir, f"{img_fn}.png"))

convert_all()
