.class interface abstract Lio/bidmachine/AdResponseLoader$Listener;
.super Ljava/lang/Object;
.source "AdResponseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdResponseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFail(Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract onSuccess(Lio/bidmachine/AdResponse;)V
.end method
