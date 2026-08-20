.class Lcom/appodeal/ads/api/Event$EventType$1;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Event$EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/appodeal/ads/api/Event$EventType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/appodeal/ads/api/Event$EventType;
    .locals 0

    .line 209
    invoke-static {p1}, Lcom/appodeal/ads/api/Event$EventType;->forNumber(I)Lcom/appodeal/ads/api/Event$EventType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$EventType$1;->findValueByNumber(I)Lcom/appodeal/ads/api/Event$EventType;

    move-result-object p1

    return-object p1
.end method
