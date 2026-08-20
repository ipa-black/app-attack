.class public final Lcom/appodeal/ads/s4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/appodeal/ads/u;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/u<",
            "***>;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/appodeal/ads/o1$a;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/appodeal/ads/w2$b;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/appodeal/ads/o4$b;

    if-eqz v0, :cond_2

    const/16 p0, 0x80

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/appodeal/ads/t0$b;

    if-eqz v0, :cond_3

    const/16 p0, 0xc5c

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/appodeal/ads/h2$b;

    if-eqz v0, :cond_4

    const/16 p0, 0x100

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/appodeal/ads/Native$a;

    if-eqz v0, :cond_5

    const/16 p0, 0x200

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/appodeal/ads/g1;->a:Lcom/appodeal/ads/i1;

    const-string v1, "unexpected AdTypeController: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
