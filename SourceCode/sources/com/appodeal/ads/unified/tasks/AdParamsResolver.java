package com.appodeal.ads.unified.tasks;
/* loaded from: classes2.dex */
public interface AdParamsResolver<InputType, OutputType> {
    void processResponse(InputType inputtype, AdParamsResolverCallback<OutputType> adParamsResolverCallback);
}
