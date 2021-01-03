/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\domain\errors\errors.dart
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\domain\errors
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 12:55:48 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */
abstract class FailureSearch implements Exception {}

class InvalidNameError implements FailureSearch {}

class DataSourceError implements FailureSearch {}
