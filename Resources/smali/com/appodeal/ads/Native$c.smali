.class public final Lcom/appodeal/ads/Native$c;
.super Lcom/appodeal/ads/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/s<",
        "Lcom/appodeal/ads/Native$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "native"

    const-string v1, "debug_native"

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
