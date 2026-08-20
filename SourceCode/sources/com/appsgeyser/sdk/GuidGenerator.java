package com.appsgeyser.sdk;

import java.util.UUID;
/* loaded from: classes2.dex */
public class GuidGenerator {
    public static String generateNewGuid() {
        return UUID.randomUUID().toString();
    }
}
