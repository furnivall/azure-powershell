// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.Management.DataFactory.Models
{
    using System.Linq;

    /// <summary>
    /// A copy activity Salesforce V2 source.
    /// </summary>
    [Newtonsoft.Json.JsonObject("SalesforceV2Source")]
    public partial class SalesforceV2Source : TabularSource
    {
        /// <summary>
        /// Initializes a new instance of the SalesforceV2Source class.
        /// </summary>
        public SalesforceV2Source()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the SalesforceV2Source class.
        /// </summary>

        /// <param name="sourceRetryCount">Source retry count. Type: integer (or Expression with resultType integer).
        /// </param>

        /// <param name="sourceRetryWait">Source retry wait. Type: string (or Expression with resultType string),
        /// pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
        /// </param>

        /// <param name="maxConcurrentConnections">The maximum concurrent connection count for the source data store. Type:
        /// integer (or Expression with resultType integer).
        /// </param>

        /// <param name="disableMetricsCollection">If true, disable data store metrics collection. Default is false. Type:
        /// boolean (or Expression with resultType boolean).
        /// </param>

        /// <param name="queryTimeout">Query timeout. Type: string (or Expression with resultType string),
        /// pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
        /// </param>

        /// <param name="additionalColumns">Specifies the additional columns to be added to source data. Type: array of
        /// objects(AdditionalColumns) (or Expression with resultType array of
        /// objects).
        /// </param>

        /// <param name="soqlQuery">Database query. Type: string (or Expression with resultType string).
        /// </param>

        /// <param name="includeDeletedObjects">This property control whether query result contains Deleted objects.
        /// Default is false. Type: boolean (or Expression with resultType boolean).
        /// </param>
        public SalesforceV2Source(object sourceRetryCount = default(object), object sourceRetryWait = default(object), object maxConcurrentConnections = default(object), object disableMetricsCollection = default(object), object queryTimeout = default(object), object additionalColumns = default(object), object soqlQuery = default(object), object includeDeletedObjects = default(object))

        : base(sourceRetryCount, sourceRetryWait, maxConcurrentConnections, disableMetricsCollection, queryTimeout, additionalColumns)
        {
            this.SoqlQuery = soqlQuery;
            this.IncludeDeletedObjects = includeDeletedObjects;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();


        /// <summary>
        /// Gets or sets database query. Type: string (or Expression with resultType
        /// string).
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "SOQLQuery")]
        public object SoqlQuery {get; set; }

        /// <summary>
        /// Gets or sets this property control whether query result contains Deleted
        /// objects. Default is false. Type: boolean (or Expression with resultType
        /// boolean).
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "includeDeletedObjects")]
        public object IncludeDeletedObjects {get; set; }
    }
}