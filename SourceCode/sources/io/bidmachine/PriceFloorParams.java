package io.bidmachine;

import io.bidmachine.models.IPriceFloorParams;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes5.dex */
public final class PriceFloorParams implements IPriceFloorParams<PriceFloorParams> {
    private final Map<String, Double> priceFloorsMap = new HashMap();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.IPriceFloorParams
    public PriceFloorParams addPriceFloor(double d2) {
        addPriceFloor(UUID.randomUUID().toString(), d2);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.IPriceFloorParams
    public PriceFloorParams addPriceFloor(String str, double d2) {
        this.priceFloorsMap.put(str, Double.valueOf(d2));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Double> getPriceFloors() {
        return this.priceFloorsMap;
    }
}
