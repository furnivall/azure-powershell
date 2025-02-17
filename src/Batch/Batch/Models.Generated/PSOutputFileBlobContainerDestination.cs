﻿// -----------------------------------------------------------------------------
﻿//
﻿// Copyright Microsoft Corporation
﻿// Licensed under the Apache License, Version 2.0 (the "License");
﻿// you may not use this file except in compliance with the License.
﻿// You may obtain a copy of the License at
﻿// http://www.apache.org/licenses/LICENSE-2.0
﻿// Unless required by applicable law or agreed to in writing, software
﻿// distributed under the License is distributed on an "AS IS" BASIS,
﻿// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
﻿// See the License for the specific language governing permissions and
﻿// limitations under the License.
﻿// -----------------------------------------------------------------------------
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:5.0.17
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Microsoft.Azure.Commands.Batch.Models
{
    using System;
    using System.Collections;
    using System.Collections.Generic;
    using Microsoft.Azure.Batch;
    
    
    public partial class PSOutputFileBlobContainerDestination
    {
        
        internal Microsoft.Azure.Batch.OutputFileBlobContainerDestination omObject;
        
        private PSComputeNodeIdentityReference identityReference;
        
        private IList<PSHttpHeader> uploadHeaders;
        
        public PSOutputFileBlobContainerDestination(string containerUrl, string path = null)
        {
            this.omObject = new Microsoft.Azure.Batch.OutputFileBlobContainerDestination(containerUrl, path);
        }
        
        public PSOutputFileBlobContainerDestination(string containerUrl, PSComputeNodeIdentityReference identityReference, string path = null)
        {
            this.omObject = new Microsoft.Azure.Batch.OutputFileBlobContainerDestination(containerUrl, identityReference.omObject, path);
        }
        
        internal PSOutputFileBlobContainerDestination(Microsoft.Azure.Batch.OutputFileBlobContainerDestination omObject)
        {
            if ((omObject == null))
            {
                throw new System.ArgumentNullException("omObject");
            }
            this.omObject = omObject;
        }
        
        public string ContainerUrl
        {
            get
            {
                return this.omObject.ContainerUrl;
            }
        }
        
        public PSComputeNodeIdentityReference IdentityReference
        {
            get
            {
                if (((this.identityReference == null) 
                            && (this.omObject.IdentityReference != null)))
                {
                    this.identityReference = new PSComputeNodeIdentityReference(this.omObject.IdentityReference);
                }
                return this.identityReference;
            }
            set
            {
                if ((value == null))
                {
                    this.omObject.IdentityReference = null;
                }
                else
                {
                    this.omObject.IdentityReference = value.omObject;
                }
                this.identityReference = value;
            }
        }
        
        public string Path
        {
            get
            {
                return this.omObject.Path;
            }
        }
        
        public IList<PSHttpHeader> UploadHeaders
        {
            get
            {
                if (((this.uploadHeaders == null) 
                            && (this.omObject.UploadHeaders != null)))
                {
                    List<PSHttpHeader> list;
                    list = new List<PSHttpHeader>();
                    IEnumerator<Microsoft.Azure.Batch.HttpHeader> enumerator;
                    enumerator = this.omObject.UploadHeaders.GetEnumerator();
                    for (
                    ; enumerator.MoveNext(); 
                    )
                    {
                        list.Add(new PSHttpHeader(enumerator.Current));
                    }
                    this.uploadHeaders = list;
                }
                return this.uploadHeaders;
            }
            set
            {
                if ((value == null))
                {
                    this.omObject.UploadHeaders = null;
                }
                else
                {
                    this.omObject.UploadHeaders = new List<Microsoft.Azure.Batch.HttpHeader>();
                }
                this.uploadHeaders = value;
            }
        }
    }
}
