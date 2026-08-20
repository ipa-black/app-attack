package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.yandex.metrica.impl.ob.e1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1499e1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f14630a = Pattern.compile("com\\.yandex\\.metrica\\.(?!push)");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f14631b = Pattern.compile("com\\.yandex\\.metrica\\.push\\..*");

    public boolean a(List<StackTraceElement> list) {
        return a(list, f14630a);
    }

    public boolean b(List<StackTraceElement> list) {
        return a(list, f14631b);
    }

    private boolean a(List<StackTraceElement> list, Pattern pattern) {
        for (StackTraceElement stackTraceElement : list) {
            if (pattern.matcher(stackTraceElement.getClassName()).find()) {
                return true;
            }
        }
        return false;
    }
}
