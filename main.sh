echo 'Hello'

for VARIABLE in 1 2 3
do
    echo -e "\naccount $VARIABLE scan\n"
    #inspec exec controls/example.rb --waiver-file waivers.yaml
    python3 process_waivers.py
    inspec exec ../inspec-workshop --waiver-file waivers.yaml --reporter cli html2:index.html
    rm -rf waivers.yaml
    sleep 5
done