.class public final Lcom/appodeal/ads/q5;
.super Lcom/appodeal/ads/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/r<",
        "Lcom/appodeal/ads/o5;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/s<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/appodeal/ads/r;-><init>(Lcom/appodeal/ads/s;)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/appodeal/ads/l;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/o5;

    .line 1
    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/appodeal/ads/networking/binders/b$a$a$f;->a:Lcom/appodeal/ads/networking/binders/b$a$a$f;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/networking/binders/b$a$a;)V

    return-void
.end method

.method public final n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    return-object v0
.end method
