def lookup():
    file1 = open("waivers.yaml", "w")
    file1.write('tmp-1.0:\n')
    file1.write('   expiration_date: 2022-03-01\n')
    file1.write('   justification: "This might be a bug in the test. @qateam"\n')
    file1.write('   run: false\n')
    file1.close()

lookup()