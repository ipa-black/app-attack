.class public final Lcom/appodeal/ads/f4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lorg/json/JSONObject;Lcom/appodeal/ads/networking/binders/b;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/k3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/k3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$j;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/appodeal/ads/n3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/n3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$c;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/appodeal/ads/r3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/r3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$d;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/appodeal/ads/s3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/s3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$f;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/appodeal/ads/t3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/t3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$h;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/appodeal/ads/u3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/u3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$n;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/appodeal/ads/v3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/v3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$i;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/appodeal/ads/w3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/w3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$k;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/appodeal/ads/e4;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/e4;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$l;

    if-eqz v0, :cond_9

    new-instance v0, Lcom/appodeal/ads/e3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/e3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$m;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/appodeal/ads/f3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/f3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$b;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/appodeal/ads/h3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/h3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$g;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/appodeal/ads/i3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/i3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    goto :goto_0

    :cond_c
    instance-of v0, p1, Lcom/appodeal/ads/networking/binders/b$e;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/appodeal/ads/j3;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/j3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    :goto_0
    invoke-static {p0, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    return-void

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
