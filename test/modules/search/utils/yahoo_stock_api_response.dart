/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\test\modules\search\utils\yahoo_stock_api_result.dart
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\test\modules\search\utils
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 7:15:15 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */

const yahooResponse = """
{
    "financialsTemplate": {
        "code": "N",
        "maxAge": 1
    },
    "price": {
        "quoteSourceName": "Delayed Quote",
        "regularMarketOpen": {
            "raw": 0,
            "fmt": "0,00"
        },
        "averageDailyVolume3Month": {
            "raw": 36326646,
            "fmt": "36,33M",
            "longFmt": "36.326.646"
        },
        "exchange": "SAO",
        "regularMarketTime": 1609362851,
        "volume24Hr": {},
        "regularMarketDayHigh": {
            "raw": 0,
            "fmt": "0,00"
        },
        "shortName": "MAGAZ LUIZA ON      NM",
        "averageDailyVolume10Day": {
            "raw": 12015500,
            "fmt": "12,02M",
            "longFmt": "12.015.500"
        },
        "longName": "Magazine Luiza S.A.",
        "regularMarketChange": {
            "raw": -0.30760002,
            "fmt": "-0,31"
        },
        "currencySymbol": "R\$",
        "regularMarketPreviousClose": {
            "raw": 25.2576,
            "fmt": "25,26"
        },
        "preMarketPrice": {},
        "exchangeDataDelayedBy": 0,
        "toCurrency": null,
        "postMarketChange": {},
        "postMarketPrice": {},
        "exchangeName": "Sao Paolo",
        "preMarketChange": {},
        "circulatingSupply": {},
        "regularMarketDayLow": {
            "raw": 0,
            "fmt": "0,00"
        },
        "priceHint": {
            "raw": 2,
            "fmt": "2",
            "longFmt": "2"
        },
        "currency": "BRL",
        "regularMarketPrice": {
            "raw": 24.95,
            "fmt": "24,95"
        },
        "regularMarketVolume": {
            "raw": 0,
            "fmt": null,
            "longFmt": "0,00"
        },
        "lastMarket": null,
        "regularMarketSource": "DELAYED",
        "openInterest": {},
        "marketState": "CLOSED",
        "underlyingSymbol": null,
        "marketCap": {
            "raw": 161260830720,
            "fmt": "161,26B",
            "longFmt": "161.260.830.720,00"
        },
        "quoteType": "EQUITY",
        "volumeAllCurrencies": {},
        "strikePrice": {},
        "symbol": "MGLU3.SA",
        "maxAge": 1,
        "fromCurrency": null,
        "regularMarketChangePercent": {
            "raw": -0.012178513,
            "fmt": "-1,22%"
        }
    },
    "secFilings": {},
    "quoteType": {
        "exchange": "SAO",
        "shortName": "MAGAZ LUIZA ON      NM",
        "longName": "Magazine Luiza S.A.",
        "exchangeTimezoneName": "America/Sao_Paulo",
        "exchangeTimezoneShortName": "BRT",
        "isEsgPopulated": false,
        "gmtOffSetMilliseconds": "-7200000",
        "quoteType": "EQUITY",
        "symbol": "MGLU3.SA",
        "messageBoardId": "finmb_5547431_lang_pt",
        "market": "br_market"
    },
    "calendarEvents": {
        "maxAge": 1,
        "earnings": {
            "earningsDate": [
                {
                    "raw": 1614816000,
                    "fmt": "2021-03-04"
                }
            ],
            "earningsAverage": {},
            "earningsLow": {},
            "earningsHigh": {},
            "revenueAverage": {},
            "revenueLow": {},
            "revenueHigh": {}
        },
        "exDividendDate": {
            "raw": 1609286400,
            "fmt": "2020-12-30"
        },
        "dividendDate": {}
    },
    "summaryDetail": {
        "previousClose": {
            "raw": 25.2576,
            "fmt": "25,26"
        },
        "regularMarketOpen": {
            "raw": 0,
            "fmt": "0,00"
        },
        "twoHundredDayAverage": {
            "raw": 22.51071,
            "fmt": "22,51"
        },
        "trailingAnnualDividendYield": {
            "raw": 0.0040383884,
            "fmt": "0,40%"
        },
        "payoutRatio": {
            "raw": 1.1436,
            "fmt": "114,36%"
        },
        "volume24Hr": {},
        "regularMarketDayHigh": {
            "raw": 0,
            "fmt": "0,00"
        },
        "navPrice": {},
        "averageDailyVolume10Day": {
            "raw": 12015500,
            "fmt": "12,02M",
            "longFmt": "12.015.500"
        },
        "totalAssets": {},
        "regularMarketPreviousClose": {
            "raw": 25.2576,
            "fmt": "25,26"
        },
        "fiftyDayAverage": {
            "raw": 24.275454,
            "fmt": "24,28"
        },
        "trailingAnnualDividendRate": {
            "raw": 0.102,
            "fmt": "0,10"
        },
        "open": {
            "raw": 0,
            "fmt": "0,00"
        },
        "toCurrency": null,
        "averageVolume10days": {
            "raw": 12015500,
            "fmt": "12,02M",
            "longFmt": "12.015.500"
        },
        "expireDate": {},
        "yield": {},
        "algorithm": null,
        "dividendRate": {
            "raw": 0.06,
            "fmt": "0,06"
        },
        "exDividendDate": {
            "raw": 1609286400,
            "fmt": "2020-12-30"
        },
        "beta": {
            "raw": 0.829476,
            "fmt": "0,83"
        },
        "circulatingSupply": {},
        "startDate": {},
        "regularMarketDayLow": {
            "raw": 0,
            "fmt": "0,00"
        },
        "priceHint": {
            "raw": 2,
            "fmt": "2",
            "longFmt": "2"
        },
        "currency": "BRL",
        "trailingPE": {
            "raw": 499,
            "fmt": "499,00"
        },
        "regularMarketVolume": {
            "raw": 0,
            "fmt": null,
            "longFmt": "0"
        },
        "lastMarket": null,
        "maxSupply": {},
        "openInterest": {},
        "marketCap": {
            "raw": 161260830720,
            "fmt": "161,26B",
            "longFmt": "161.260.830.720"
        },
        "volumeAllCurrencies": {},
        "strikePrice": {},
        "averageVolume": {
            "raw": 36326646,
            "fmt": "36,33M",
            "longFmt": "36.326.646"
        },
        "priceToSalesTrailing12Months": {
            "raw": 6.32486,
            "fmt": "6,32"
        },
        "dayLow": {
            "raw": 0,
            "fmt": "0,00"
        },
        "ask": {
            "raw": 25.2,
            "fmt": "25,20"
        },
        "ytdReturn": {},
        "askSize": {
            "raw": 0,
            "fmt": null,
            "longFmt": "0"
        },
        "volume": {
            "raw": 0,
            "fmt": null,
            "longFmt": "0"
        },
        "fiftyTwoWeekHigh": {
            "raw": 28.31,
            "fmt": "28,31"
        },
        "forwardPE": {
            "raw": 6.316456,
            "fmt": "6,32"
        },
        "maxAge": 1,
        "fromCurrency": null,
        "fiveYearAvgDividendYield": {},
        "fiftyTwoWeekLow": {
            "raw": 0,
            "fmt": "0,00"
        },
        "bid": {
            "raw": 24.92,
            "fmt": "24,92"
        },
        "tradeable": false,
        "dividendYield": {
            "raw": 0.0023,
            "fmt": "0,23%"
        },
        "bidSize": {
            "raw": 0,
            "fmt": null,
            "longFmt": "0"
        },
        "dayHigh": {
            "raw": 0,
            "fmt": "0,00"
        }
    },
    "symbol": "MGLU3.SA",
    "assetProfile": {
        "zip": "14403-471",
        "sector": "Consumer Cyclical",
        "fullTimeEmployees": 30000,
        "compensationRisk": 6,
        "auditRisk": 5,
        "longBusinessSummary": "Magazine Luiza S.A. engages in the retail sale of consumer goods. It operates through Retail, Financial Operations, Insurance Operations, and Other Services segments. The company sells technology products, appliances, electronics, telephony, furniture, gifts, and toys. It also grants credit and provides extended warranties for its products. In addition, the company is involved in the provision of consumer financing and consortium services for the purchase of vehicles, motorcycles, home appliances, and real estate properties; and e-commerce of perfumes, cosmetics, sports, and fashion products. Further, it provides integration, logistics, and technological solutions; and manages relation between merchants and marketplaces. As of December 31, 2019, the company owned 1,113 stores and 17 distribution centers. The company was founded in 1957 and is headquartered in Franca, Brazil. Magazine Luiza S.A. is a subsidiary of LTD AdministraÃ§Ã£o e ParticipaÃ§Ã£o S.A.",
        "city": "Franca",
        "state": "SP",
        "shareHolderRightsRisk": 2,
        "governanceEpochDate": 1606780800,
        "boardRisk": 5,
        "country": "Brazil",
        "companyOfficers": [
            {
                "maxAge": 1,
                "name": "Mr. Frederico Trajano Inacio Rodrigues",
                "age": 44,
                "title": "CEO & Member of Exec. Board",
                "yearBorn": 1976,
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            },
            {
                "maxAge": 1,
                "name": "Mr. Roberto Bellissimo Rodrigues",
                "title": "Exec. CFO, Investor Relations Director & Member of Exec. Board",
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            },
            {
                "maxAge": 1,
                "name": "Ms. Maria Isabel Bonfim de Oliveira",
                "title": "Exec. Director, Controller & Member of Exec. Board",
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            },
            {
                "maxAge": 1,
                "name": "Mr. FabrÃ­cio Bittar Garcia",
                "title": "Chief Commercial & Operations Officer and Member of Exec. Board",
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            },
            {
                "maxAge": 1,
                "name": "Mr. Eduardo  Galanternick",
                "title": "Exec. Director of E-Commerce & Member of Exec. Board",
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            },
            {
                "maxAge": 1,
                "name": "Mr. Decio  Sonohara",
                "title": "Exec. Director of Infrastructure, Logistics & IT Officer and Member of Exec. Board",
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            },
            {
                "maxAge": 1,
                "name": "Ms. Patricia  Pugas",
                "title": "People Management Exec. Officer & Member of Exec. Board",
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            },
            {
                "maxAge": 1,
                "name": "Mr. Luiz Fernando Rego",
                "title": "Exec. Commercial Officer & Member of Exec. Board",
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            },
            {
                "maxAge": 1,
                "name": "Mr. AndrÃ©  Fatala",
                "title": "Information Technology Exec. Officer & Member of Exec. Board",
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            },
            {
                "maxAge": 1,
                "name": "Mr. Leandro  Soares",
                "title": "Exec. Director of Marketplace & Member of Management Board",
                "exercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                },
                "unexercisedValue": {
                    "raw": 0,
                    "fmt": null,
                    "longFmt": "0"
                }
            }
        ],
        "website": "http://www.magazineluiza.com.br",
        "maxAge": 86400,
        "overallRisk": 3,
        "address1": "Rua Arnulfo de Lima, nÂº 2.385",
        "industry": "Specialty Retail",
        "address2": "Vila Santa Cruz"
    },
    "pageViews": {}
}""";
