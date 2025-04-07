import os
import time


def pytest_configure(config):
    timestamp = time.strftime("%Y%m%d_%H%M%S")

    if config.option.robot_outputdir == ".":
        config.option.robot_outputdir = os.path.join("results", "chrome")

    os.makedirs(config.option.robot_outputdir, exist_ok=True)

    config.option.robot_log = f"{timestamp}_{config.option.robot_log}"
    config.option.robot_report = f"{timestamp}_{config.option.robot_report}"
    config.option.robot_output = f"{timestamp}_{config.option.robot_output}"
