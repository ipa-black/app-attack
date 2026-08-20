package com.explorestack.iab.vast.processor;

import android.util.Pair;
import com.explorestack.iab.vast.tags.LinearCreativeTag;
import com.explorestack.iab.vast.tags.MediaFileTag;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class b<T extends MediaFileTag> implements Serializable {
    public abstract Pair<LinearCreativeTag, T> a(List<Pair<LinearCreativeTag, T>> list);
}
