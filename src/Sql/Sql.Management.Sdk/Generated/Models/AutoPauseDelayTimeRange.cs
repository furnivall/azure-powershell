// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.Management.Sql.Models
{
    using System.Linq;

    /// <summary>
    /// Supported auto pause delay time range
    /// </summary>
    public partial class AutoPauseDelayTimeRange
    {
        /// <summary>
        /// Initializes a new instance of the AutoPauseDelayTimeRange class.
        /// </summary>
        public AutoPauseDelayTimeRange()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the AutoPauseDelayTimeRange class.
        /// </summary>

        /// <param name="minValue">Minimum value
        /// </param>

        /// <param name="maxValue">Maximum value
        /// </param>

        /// <param name="stepSize">Step value for discrete values between the minimum value and the maximum
        /// value.
        /// </param>

        /// <param name="defaultProperty">Default value is no value is provided
        /// </param>

        /// <param name="unit">Unit of time that delay is expressed in
        /// Possible values include: &#39;Minutes&#39;</param>

        /// <param name="doNotPauseValue">Value that is used to not pause (infinite delay before pause)
        /// </param>
        public AutoPauseDelayTimeRange(int? minValue = default(int?), int? maxValue = default(int?), int? stepSize = default(int?), int? defaultProperty = default(int?), string unit = default(string), int? doNotPauseValue = default(int?))

        {
            this.MinValue = minValue;
            this.MaxValue = maxValue;
            this.StepSize = stepSize;
            this.DefaultProperty = defaultProperty;
            this.Unit = unit;
            this.DoNotPauseValue = doNotPauseValue;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();


        /// <summary>
        /// Gets minimum value
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "minValue")]
        public int? MinValue {get; private set; }

        /// <summary>
        /// Gets maximum value
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "maxValue")]
        public int? MaxValue {get; private set; }

        /// <summary>
        /// Gets step value for discrete values between the minimum value and the
        /// maximum value.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "stepSize")]
        public int? StepSize {get; private set; }

        /// <summary>
        /// Gets default value is no value is provided
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "default")]
        public int? DefaultProperty {get; private set; }

        /// <summary>
        /// Gets unit of time that delay is expressed in Possible values include: &#39;Minutes&#39;
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "unit")]
        public string Unit {get; private set; }

        /// <summary>
        /// Gets value that is used to not pause (infinite delay before pause)
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "doNotPauseValue")]
        public int? DoNotPauseValue {get; private set; }
    }
}