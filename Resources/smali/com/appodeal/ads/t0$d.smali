.class public final Lcom/appodeal/ads/t0$d;
.super Lcom/appodeal/ads/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/s<",
        "Lcom/appodeal/ads/t0$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "banner_320"

    const-string v1, "debug_banner_320"

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
