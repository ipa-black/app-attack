.class public final Lcom/appodeal/ads/w2$a;
.super Lcom/appodeal/ads/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/s<",
        "Lcom/appodeal/ads/w2$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "video"

    const-string v1, "debug_video"

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
