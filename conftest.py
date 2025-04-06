import os
import time

def pytest_configure(config):
    timestamp = time.strftime("%Y%m%d_%H%M%S")
    results_dir = os.path.join("results", timestamp)
    os.makedirs(results_dir, exist_ok=True)

    config.option.robot_outputdir = results_dir
    config.option.robot_log = "log.html"
    config.option.robot_report = "report.html"
    config.option.robot_output = "output.xml"
