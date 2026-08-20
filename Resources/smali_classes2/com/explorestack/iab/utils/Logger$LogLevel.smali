.class public final enum Lcom/explorestack/iab/utils/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/utils/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum error:Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum info:Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum none:Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum warning:Lcom/explorestack/iab/utils/Logger$LogLevel;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v1, "debug"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

    new-instance v1, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v2, "info"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/iab/utils/Logger$LogLevel;->info:Lcom/explorestack/iab/utils/Logger$LogLevel;

    new-instance v2, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v3, "warning"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/iab/utils/Logger$LogLevel;->warning:Lcom/explorestack/iab/utils/Logger$LogLevel;

    new-instance v3, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v4, "error"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/iab/utils/Logger$LogLevel;->error:Lcom/explorestack/iab/utils/Logger$LogLevel;

    new-instance v4, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v5, "none"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/iab/utils/Logger$LogLevel;->none:Lcom/explorestack/iab/utils/Logger$LogLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/explorestack/iab/utils/Logger$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->$VALUES:[Lcom/explorestack/iab/utils/Logger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/explorestack/iab/utils/Logger$LogLevel;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/utils/Logger$LogLevel;
    .locals 1

    const-class v0, Lcom/explorestack/iab/utils/Logger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/utils/Logger$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/utils/Logger$LogLevel;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->$VALUES:[Lcom/explorestack/iab/utils/Logger$LogLevel;

    invoke-virtual {v0}, [Lcom/explorestack/iab/utils/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/utils/Logger$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/utils/Logger$LogLevel;->a:I

    return v0
.end method
