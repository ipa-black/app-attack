package com.amazon.device.ads;

import com.amazon.device.ads.DTBBidInspector;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class DTBBidInspector {
    private static final int INSPECTION_PERIOD = 180000;
    private static final int RETENTION_INTERVAL = 480000;
    static DTBBidInspector theInstance = new DTBBidInspector();
    private List<BidDescriptor> bids = new ArrayList();
    private Timer timer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBBidInspector getInstance() {
        return theInstance;
    }

    private DTBBidInspector() {
        Timer timer = new Timer();
        this.timer = timer;
        timer.schedule(new AnonymousClass1(), 180000L, 180000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazon.device.ads.DTBBidInspector$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends TimerTask {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$run$0$com-amazon-device-ads-DTBBidInspector$1  reason: not valid java name */
        public /* synthetic */ void m64lambda$run$0$comamazondeviceadsDTBBidInspector$1() {
            DTBBidInspector.this.purge();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            DtbThreadService.getInstance().execute(new Runnable() { // from class: com.amazon.device.ads.DTBBidInspector$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBBidInspector.AnonymousClass1.this.m64lambda$run$0$comamazondeviceadsDTBBidInspector$1();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void purge() {
        long time = new Date().getTime();
        Iterator<BidDescriptor> it = this.bids.iterator();
        int i = 0;
        while (it.hasNext() && time - it.next().bidTime > 480000) {
            i++;
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.bids.remove(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class BidDescriptor {
        String bidId;
        long bidTime;

        BidDescriptor() {
        }
    }

    public synchronized void addBid(String str) {
        BidDescriptor bidDescriptor = new BidDescriptor();
        bidDescriptor.bidId = str;
        bidDescriptor.bidTime = new Date().getTime();
        this.bids.add(bidDescriptor);
    }

    public synchronized boolean wasUsed(String str) {
        for (BidDescriptor bidDescriptor : this.bids) {
            if (bidDescriptor.bidId.equals(str)) {
                this.bids.remove(bidDescriptor);
                return false;
            }
        }
        return true;
    }
}
