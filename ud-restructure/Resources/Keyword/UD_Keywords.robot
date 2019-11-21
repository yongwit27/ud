*** Settings ***
Resource          Redefine_Keywords.robot
Resource          ../Repository/MasterReporitory.robot
Resource          ../Variable/Config/LocalConfig/${CONFIGNAME}/LocalConfig.robot
Resource          ../Variable/Config/GlobalConfig/${ENV}/GlobalConfig.robot
Resource          ../ErrorMessage/${ENV}/ErrorMessage.robot
Resource          ../Variable/pageVariable/${ENV}/Variable.robot
