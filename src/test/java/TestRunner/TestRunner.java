package TestRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/Feature/ViewLocation.Feature", // Path to your feature files
        glue = "StepDef", // Package where your step definitions are located
        plugin = {
            "pretty", // Prints detailed output to the console
            "html:target/cucumber-reports.html", // Generates HTML report
            "json:target/cucumber.json" // Generates JSON report
        },
        monochrome = true, // Makes the console output more readable
        dryRun = true // Set to true to check for undefined steps without running tests
        
)
public class TestRunner {

}
