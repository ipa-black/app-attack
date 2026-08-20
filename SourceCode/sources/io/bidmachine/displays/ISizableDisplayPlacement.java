package io.bidmachine.displays;

import android.graphics.Point;
import io.bidmachine.ContextProvider;
import io.bidmachine.unified.UnifiedAdRequestParams;
/* loaded from: classes5.dex */
interface ISizableDisplayPlacement<UnifiedAdRequestParamsType extends UnifiedAdRequestParams> {
    Point getSize(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype);
}
