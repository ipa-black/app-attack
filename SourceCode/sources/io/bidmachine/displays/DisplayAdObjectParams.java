package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.Ad;
/* loaded from: classes5.dex */
final class DisplayAdObjectParams extends IabAdObjectParams {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DisplayAdObjectParams(Ad ad) {
        super(ad);
        prepareEvents(ad.getDisplay().getEventList());
    }
}
