.class public interface abstract Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onProcessFail(Lcom/appodeal/ads/networking/LoadingError;)V
.end method

.method public abstract onProcessSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)V"
        }
    .end annotation
.end method
