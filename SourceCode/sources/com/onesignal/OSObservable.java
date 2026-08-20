package com.onesignal;

import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class OSObservable<ObserverType, StateType> {
    private boolean fireOnMainThread;
    private String methodName;
    private List<Object> observers = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public OSObservable(String str, boolean z) {
        this.methodName = str;
        this.fireOnMainThread = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addObserver(ObserverType observertype) {
        this.observers.add(new WeakReference(observertype));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addObserverStrong(ObserverType observertype) {
        this.observers.add(observertype);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeObserver(ObserverType observertype) {
        for (int i = 0; i < this.observers.size(); i++) {
            Object obj = ((WeakReference) this.observers.get(i)).get();
            if (obj != null && obj.equals(observertype)) {
                this.observers.remove(i);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean notifyChange(final StateType statetype) {
        boolean z = false;
        for (final Object obj : this.observers) {
            if (obj instanceof WeakReference) {
                obj = ((WeakReference) obj).get();
            }
            if (obj != null) {
                try {
                    final Method declaredMethod = obj.getClass().getDeclaredMethod(this.methodName, statetype.getClass());
                    declaredMethod.setAccessible(true);
                    if (this.fireOnMainThread) {
                        OSUtils.runOnMainUIThread(new Runnable() { // from class: com.onesignal.OSObservable.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    declaredMethod.invoke(obj, statetype);
                                } catch (IllegalAccessException e2) {
                                    e2.printStackTrace();
                                } catch (InvocationTargetException e3) {
                                    e3.printStackTrace();
                                }
                            }
                        });
                    } else {
                        try {
                            declaredMethod.invoke(obj, statetype);
                        } catch (IllegalAccessException e2) {
                            e2.printStackTrace();
                        } catch (InvocationTargetException e3) {
                            e3.printStackTrace();
                        }
                    }
                    z = true;
                } catch (NoSuchMethodException e4) {
                    e4.printStackTrace();
                }
            }
        }
        return z;
    }
}
