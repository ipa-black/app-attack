.class public final Lcom/appodeal/ads/t0$c;
.super Lcom/appodeal/ads/b6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/b6<",
        "Lcom/appodeal/ads/v0;",
        "Lcom/appodeal/ads/w0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/t0;->a:Lcom/appodeal/ads/u0;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/b6;-><init>(Lcom/appodeal/ads/g;)V

    return-void
.end method


# virtual methods
.method public final c()Lcom/appodeal/ads/x5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/x5<",
            "Lcom/appodeal/ads/w0;",
            "Lcom/appodeal/ads/v0;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object v0

    return-object v0
.end method
