.class Lcom/explorestack/protobuf/adcom/AuditStatusCode$1;
.super Ljava/lang/Object;
.source "AuditStatusCode.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/AuditStatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/adcom/AuditStatusCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/AuditStatusCode$1;->findValueByNumber(I)Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/explorestack/protobuf/adcom/AuditStatusCode;
    .locals 0

    .line 166
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->forNumber(I)Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    move-result-object p1

    return-object p1
.end method
