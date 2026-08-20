.class public final Lcom/appodeal/ads/w0;
.super Lcom/appodeal/ads/z5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/z5<",
        "Lcom/appodeal/ads/v0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/t0$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/z5;-><init>(Lcom/appodeal/ads/s;)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/appodeal/ads/l;)V
    .locals 4

    check-cast p1, Lcom/appodeal/ads/v0;

    .line 1
    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object v0

    const-string v1, "obtainAdRenderer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/x5;->b()Lcom/appodeal/ads/a;

    move-result-object v1

    const-string v2, "adRenderer.currentDisplayPosition"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/appodeal/ads/networking/binders/b$a$a$a;

    iget-object v1, v1, Lcom/appodeal/ads/a;->a:Ljava/lang/String;

    const-string v3, "currentDisplayPosition.name"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcom/appodeal/ads/v0;->t:I

    const/16 v3, 0x32

    if-ne p1, v3, :cond_0

    const/16 p1, 0x140

    goto :goto_0

    :cond_0
    const/16 p1, 0x2d8

    :goto_0
    invoke-virtual {v0}, Lcom/appodeal/ads/x5;->a()Z

    move-result v0

    sget-boolean v3, Lcom/appodeal/ads/t0;->b:Z

    invoke-direct {v2, v1, p1, v0, v3}, Lcom/appodeal/ads/networking/binders/b$a$a$a;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v2}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/networking/binders/b$a$a;)V

    return-void
.end method

.method public final n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Banner:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    return-object v0
.end method
