.class public final Lcom/appodeal/ads/q3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/appodeal/ads/modules/common/internal/ext/JsonArrayBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/networking/binders/b;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/networking/binders/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/q3;->a:Lcom/appodeal/ads/networking/binders/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/ext/JsonArrayBuilder;

    .line 1
    const-string v0, "$this$jsonArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/q3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$c;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$c;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonArrayBuilder;->putValues(Ljava/util/List;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
