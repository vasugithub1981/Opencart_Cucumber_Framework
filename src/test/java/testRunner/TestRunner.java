package testRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
		
		//if you want to run all feature files just mention features folder name
		//if multiple features then features= {".//Features//Login.feature",".//Features//Login2.feature"},
		// you dont need to mention file name steps in GLUE just mention package name stepDefinitions, automatically recognises
		
		// if step definitions file not run then we run feature file or we have to run Test Runner file
		
//		features= {".//Features/"} - all in the features will be executed instead of giving like below
		
		features= {".//Features//Login.feature", ".//Features//LoginDTT.feature", ".//Features//LoginDTTExcel.feature"},
		
//		features="@target/rerun.txt", //runs only failures - target is folder in project 
	  
        glue="StepDefinitions",
        plugin= {
        		"pretty", "html:reports/myreport.html", 
        		"json:reports/myreport.json"
        		},    //Mandatory to capture failures; can give in same line
        //by default dry run is false
        //dry run false - actual execution ; dry run true- it just check methods are connected doesnt launch browser like chrome
        dryRun=false,
        //monochrome to avoid junk characters in output
        monochrome=true, 
        
     //  tags = "@sanity"	//--Scenarios tagged with @sanity, tags are similar to GROUPS
    // tags = "@sanity and @regression" //-- scenerios tagged with @sanity and @regression
     tags = "@sanity or @regression" //-- scenerios tagged with @sanity or @regression
    // tags = "@sanity and not @regression" //-- scenerios tagged with @sanity but not tagged with @regression
      )
public class TestRunner 
{

}

