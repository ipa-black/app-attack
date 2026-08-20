.class Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$4;
.super Ljava/lang/Object;
.source "Placement.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lcom/explorestack/protobuf/adcom/CompanionType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/CompanionType;
    .locals 0

    .line 22542
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/CompanionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/CompanionType;

    move-result-object p1

    if-nez p1, :cond_0

    .line 22543
    sget-object p1, Lcom/explorestack/protobuf/adcom/CompanionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CompanionType;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22539
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$4;->convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/CompanionType;

    move-result-object p1

    return-object p1
.end method
