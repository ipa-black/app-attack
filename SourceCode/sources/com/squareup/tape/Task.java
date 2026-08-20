package com.squareup.tape;

import java.io.Serializable;
/* loaded from: classes3.dex */
public interface Task<T> extends Serializable {
    void execute(T t);
}
