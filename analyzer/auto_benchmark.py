import subprocess

executables = ["O0_exec", "O1_exec", "O2_exec", "O3_exec"]

print("Running Benchmark Tests...\n")

for exe in executables:
    print(f"Executing {exe}")
    result = subprocess.check_output(f"./{exe}", shell=True)
    print(result.decode())

