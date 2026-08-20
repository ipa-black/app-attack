.class Lcom/explorestack/protobuf/adcom/IpLocationService$1;
.super Ljava/lang/Object;
.source "IpLocationService.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/IpLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/adcom/IpLocationService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/IpLocationService$1;->findValueByNumber(I)Lcom/explorestack/protobuf/adcom/IpLocationService;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/explorestack/protobuf/adcom/IpLocationService;
    .locals 0

    .line 97
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/IpLocationService;->forNumber(I)Lcom/explorestack/protobuf/adcom/IpLocationService;

    move-result-object p1

    return-object p1
.end method
