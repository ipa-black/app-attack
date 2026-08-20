.class public final Lcom/appodeal/ads/h2$b;
.super Lcom/appodeal/ads/a6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/a6<",
        "Lcom/appodeal/ads/j2;",
        "Lcom/appodeal/ads/k2;",
        "Lcom/appodeal/ads/h2$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/h2$c;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Mrec:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-direct {p0, p1, v0}, Lcom/appodeal/ads/a6;-><init>(Lcom/appodeal/ads/b6;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)Lcom/appodeal/ads/l;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/k2;

    .line 1
    new-instance v0, Lcom/appodeal/ads/j2;

    invoke-direct {v0, p1, p2, p3}, Lcom/appodeal/ads/j2;-><init>(Lcom/appodeal/ads/k2;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V

    return-object v0
.end method

.method public final a(Lcom/appodeal/ads/s;)Lcom/appodeal/ads/r;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/h2$d;

    .line 2
    new-instance v0, Lcom/appodeal/ads/k2;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/k2;-><init>(Lcom/appodeal/ads/h2$d;)V

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "mrec_disabled"

    return-object v0
.end method

.method public final w()Lcom/appodeal/ads/s;
    .locals 1

    .line 1
    new-instance v0, Lcom/appodeal/ads/h2$d;

    invoke-direct {v0}, Lcom/appodeal/ads/h2$d;-><init>()V

    return-object v0
.end method

.method public final x()Lcom/appodeal/ads/x5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/x5<",
            "Lcom/appodeal/ads/k2;",
            "Lcom/appodeal/ads/j2;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/appodeal/ads/h2;->c()Lcom/appodeal/ads/h2$a;

    move-result-object v0

    return-object v0
.end method
