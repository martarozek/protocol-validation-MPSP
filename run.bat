@ECHO OFF
for %%i in (*.mcf) do (
	echo %%i
	C:/Users/laser/Downloads/mcrl2-201808.0_x86_64/mcrl2-201808.0_AMD64/bin/lps2pbes.exe MPSP.lps MPSP.pbes --formula=C:/Users/laser/Documents/GitHub/protocol-validation-MPSP/%%i --out=pbes
	C:/Users/laser/Downloads/mcrl2-201808.0_x86_64/mcrl2-201808.0_AMD64/bin/pbes2bool.exe MPSP.pbes --erase=none --in=pbes --rewriter=jitty --search=breadth-first --solver=lf --strategy=0
)