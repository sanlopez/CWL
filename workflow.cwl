cwlVersion: v1.1
class: Workflow
label: Test title
doc: Test description
inputs: []
outputs: []
steps:
  2_ProtImportMovies:
    label: pwem - import movies
    doc: "*20* Movies imported from /home/ubuntu/scipion/data/tests/relion_tutorial/micrographs/*.mrc,\
      \ Is the data phase flipped : False, Sampling rate : *1.00* \u212B/px"
    run:
      class: CommandLineTool
      baseCommand: []
      inputs: []
      outputs:
        2.outputMovies:
          type: File
          format: cryoem:SetOfMovies
    out:
    - 2.outputMovies
    in: []
  108_EmpiarDepositor:
    label: Test
    doc: Generated deposition files:, - [[/home/ubuntu/ScipionUserData/projects/testEmpiar3/Runs/000108_EmpiarDepositor/extra/results/workflow.json][Scipion
      workflow]], - [[Runs/000108_EmpiarDepositor/extra/results/deposition.json][Deposition
      json]], , *COMMENTS:* , Testing with CWLs and Scipion
    run:
      class: CommandLineTool
      baseCommand: []
      inputs:
        2.outputMovies:
          type: File
          format: cryoem:SetOfMovies
      outputs: []
    out: []
    in:
      2.outputMovies:
        source: 2_ProtImportMovies/2.outputMovies
$namespaces:
  cryoem: http://bioportal.bioontology.org/ontologies/CRYOEM/?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fhttp%3A%2F%2Fwww.semanticweb.org%2Fcoss%2Fontologies%2F2020%2F2%2Funtitled-ontology-2%
