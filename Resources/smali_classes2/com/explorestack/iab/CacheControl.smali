.class public final enum Lcom/explorestack/iab/CacheControl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/CacheControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/CacheControl;

.field public static final enum FullLoad:Lcom/explorestack/iab/CacheControl;

.field public static final enum PartialLoad:Lcom/explorestack/iab/CacheControl;

.field public static final enum Stream:Lcom/explorestack/iab/CacheControl;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/explorestack/iab/CacheControl;

    const-string v1, "FullLoad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/iab/CacheControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/CacheControl;->FullLoad:Lcom/explorestack/iab/CacheControl;

    new-instance v1, Lcom/explorestack/iab/CacheControl;

    const-string v2, "Stream"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/explorestack/iab/CacheControl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/iab/CacheControl;->Stream:Lcom/explorestack/iab/CacheControl;

    new-instance v2, Lcom/explorestack/iab/CacheControl;

    const-string v3, "PartialLoad"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/explorestack/iab/CacheControl;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/explorestack/iab/CacheControl;->PartialLoad:Lcom/explorestack/iab/CacheControl;

    filled-new-array {v0, v1, v2}, [Lcom/explorestack/iab/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/CacheControl;->$VALUES:[Lcom/explorestack/iab/CacheControl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/CacheControl;
    .locals 1

    const-class v0, Lcom/explorestack/iab/CacheControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/CacheControl;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/CacheControl;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/CacheControl;->$VALUES:[Lcom/explorestack/iab/CacheControl;

    invoke-virtual {v0}, [Lcom/explorestack/iab/CacheControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/CacheControl;

    return-object v0
.end method
