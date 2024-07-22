sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'RiskManagement/Risks/test/integration/FirstJourney',
		'RiskManagement/Risks/test/integration/pages/RiskList',
		'RiskManagement/Risks/test/integration/pages/RiskObjectPage'
    ],
    function(JourneyRunner, opaJourney, RiskList, RiskObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('RiskManagement/Risks') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRiskList: RiskList,
					onTheRiskObjectPage: RiskObjectPage
                }
            },
            opaJourney.run
        );
    }
);