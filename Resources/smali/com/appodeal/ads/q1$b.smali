.class public final Lcom/appodeal/ads/q1$b;
.super Lcom/appodeal/ads/q1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/q1;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/q1$c<",
        "Lcom/appodeal/ads/q5;",
        "Lcom/appodeal/ads/o5;",
        "Lcom/appodeal/ads/w2$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/q1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/q1$c;-><init>(Lcom/appodeal/ads/q1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/appodeal/ads/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/u<",
            "Lcom/appodeal/ads/o5;",
            "Lcom/appodeal/ads/q5;",
            "Lcom/appodeal/ads/w2$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v0

    return-object v0
.end method
