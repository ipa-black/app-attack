.class final enum Lcom/adcolony/sdk/AdColonyInterstitial$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/AdColonyInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adcolony/sdk/AdColonyInterstitial$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adcolony/sdk/AdColonyInterstitial$g;

.field public static final enum b:Lcom/adcolony/sdk/AdColonyInterstitial$g;

.field public static final enum c:Lcom/adcolony/sdk/AdColonyInterstitial$g;

.field public static final enum d:Lcom/adcolony/sdk/AdColonyInterstitial$g;

.field public static final enum e:Lcom/adcolony/sdk/AdColonyInterstitial$g;

.field public static final enum f:Lcom/adcolony/sdk/AdColonyInterstitial$g;

.field private static final synthetic g:[Lcom/adcolony/sdk/AdColonyInterstitial$g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/adcolony/sdk/AdColonyInterstitial$g;

    const-string v1, "REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyInterstitial$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyInterstitial$g;->a:Lcom/adcolony/sdk/AdColonyInterstitial$g;

    .line 2
    new-instance v1, Lcom/adcolony/sdk/AdColonyInterstitial$g;

    const-string v2, "FILLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/adcolony/sdk/AdColonyInterstitial$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/adcolony/sdk/AdColonyInterstitial$g;->b:Lcom/adcolony/sdk/AdColonyInterstitial$g;

    .line 3
    new-instance v2, Lcom/adcolony/sdk/AdColonyInterstitial$g;

    const-string v3, "NOT_FILLED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/adcolony/sdk/AdColonyInterstitial$g;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/adcolony/sdk/AdColonyInterstitial$g;->c:Lcom/adcolony/sdk/AdColonyInterstitial$g;

    .line 4
    new-instance v3, Lcom/adcolony/sdk/AdColonyInterstitial$g;

    const-string v4, "EXPIRED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/adcolony/sdk/AdColonyInterstitial$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/adcolony/sdk/AdColonyInterstitial$g;->d:Lcom/adcolony/sdk/AdColonyInterstitial$g;

    .line 5
    new-instance v4, Lcom/adcolony/sdk/AdColonyInterstitial$g;

    const-string v5, "SHOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/adcolony/sdk/AdColonyInterstitial$g;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/adcolony/sdk/AdColonyInterstitial$g;->e:Lcom/adcolony/sdk/AdColonyInterstitial$g;

    .line 6
    new-instance v5, Lcom/adcolony/sdk/AdColonyInterstitial$g;

    const-string v6, "CLOSED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/adcolony/sdk/AdColonyInterstitial$g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/adcolony/sdk/AdColonyInterstitial$g;->f:Lcom/adcolony/sdk/AdColonyInterstitial$g;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lcom/adcolony/sdk/AdColonyInterstitial$g;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/AdColonyInterstitial$g;->g:[Lcom/adcolony/sdk/AdColonyInterstitial$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyInterstitial$g;
    .locals 1

    .line 1
    const-class v0, Lcom/adcolony/sdk/AdColonyInterstitial$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adcolony/sdk/AdColonyInterstitial$g;

    return-object p0
.end method

.method public static values()[Lcom/adcolony/sdk/AdColonyInterstitial$g;
    .locals 1

    .line 1
    sget-object v0, Lcom/adcolony/sdk/AdColonyInterstitial$g;->g:[Lcom/adcolony/sdk/AdColonyInterstitial$g;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/AdColonyInterstitial$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/AdColonyInterstitial$g;

    return-object v0
.end method
