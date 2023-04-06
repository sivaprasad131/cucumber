package TestRunners;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import cucumber.api.testng.AbstractTestNGCucumberTests;

@RunWith(Cucumber.class)
@CucumberOptions(features = "featurefiles/Adminlogin.feature" , glue = "stepdefinitions",dryRun = false,plugin =
{"com.cucumber.listener.ExtentCucumberFormatter:reports/Adminresult.html"})
public class AdminLoginTest
{

}
