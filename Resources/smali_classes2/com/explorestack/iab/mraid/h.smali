.class public final enum Lcom/explorestack/iab/mraid/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/mraid/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/explorestack/iab/mraid/h;

.field public static final enum b:Lcom/explorestack/iab/mraid/h;

.field public static final enum c:Lcom/explorestack/iab/mraid/h;

.field public static final enum d:Lcom/explorestack/iab/mraid/h;

.field public static final enum e:Lcom/explorestack/iab/mraid/h;

.field public static final synthetic f:[Lcom/explorestack/iab/mraid/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/explorestack/iab/mraid/h;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/iab/mraid/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/mraid/h;->a:Lcom/explorestack/iab/mraid/h;

    new-instance v1, Lcom/explorestack/iab/mraid/h;

    const-string v2, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/explorestack/iab/mraid/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/h;

    new-instance v2, Lcom/explorestack/iab/mraid/h;

    const-string v3, "RESIZED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/explorestack/iab/mraid/h;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/explorestack/iab/mraid/h;->c:Lcom/explorestack/iab/mraid/h;

    new-instance v3, Lcom/explorestack/iab/mraid/h;

    const-string v4, "EXPANDED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/explorestack/iab/mraid/h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/explorestack/iab/mraid/h;->d:Lcom/explorestack/iab/mraid/h;

    new-instance v4, Lcom/explorestack/iab/mraid/h;

    const-string v5, "HIDDEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/explorestack/iab/mraid/h;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/explorestack/iab/mraid/h;->e:Lcom/explorestack/iab/mraid/h;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/mraid/h;->f:[Lcom/explorestack/iab/mraid/h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/mraid/h;
    .locals 1

    const-class v0, Lcom/explorestack/iab/mraid/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/mraid/h;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/mraid/h;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/mraid/h;->f:[Lcom/explorestack/iab/mraid/h;

    invoke-virtual {v0}, [Lcom/explorestack/iab/mraid/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/mraid/h;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
