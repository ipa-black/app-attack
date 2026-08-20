.class public final enum Lcom/applovin/impl/b/a$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/b/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/b/a$c;

.field public static final enum b:Lcom/applovin/impl/b/a$c;

.field public static final enum c:Lcom/applovin/impl/b/a$c;

.field public static final enum d:Lcom/applovin/impl/b/a$c;

.field public static final enum e:Lcom/applovin/impl/b/a$c;

.field public static final enum f:Lcom/applovin/impl/b/a$c;

.field public static final enum g:Lcom/applovin/impl/b/a$c;

.field public static final enum h:Lcom/applovin/impl/b/a$c;

.field private static final synthetic i:[Lcom/applovin/impl/b/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/applovin/impl/b/a$c;

    const-string v1, "IMPRESSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/b/a$c;->a:Lcom/applovin/impl/b/a$c;

    new-instance v1, Lcom/applovin/impl/b/a$c;

    const-string v2, "VIDEO_CLICK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/impl/b/a$c;->b:Lcom/applovin/impl/b/a$c;

    new-instance v2, Lcom/applovin/impl/b/a$c;

    const-string v3, "COMPANION_CLICK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/applovin/impl/b/a$c;->c:Lcom/applovin/impl/b/a$c;

    new-instance v3, Lcom/applovin/impl/b/a$c;

    const-string v4, "VIDEO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/applovin/impl/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/applovin/impl/b/a$c;->d:Lcom/applovin/impl/b/a$c;

    new-instance v4, Lcom/applovin/impl/b/a$c;

    const-string v5, "COMPANION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/applovin/impl/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/applovin/impl/b/a$c;->e:Lcom/applovin/impl/b/a$c;

    new-instance v5, Lcom/applovin/impl/b/a$c;

    const-string v6, "INDUSTRY_ICON_IMPRESSION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/applovin/impl/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/applovin/impl/b/a$c;->f:Lcom/applovin/impl/b/a$c;

    new-instance v6, Lcom/applovin/impl/b/a$c;

    const-string v7, "INDUSTRY_ICON_CLICK"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/applovin/impl/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/applovin/impl/b/a$c;->g:Lcom/applovin/impl/b/a$c;

    new-instance v7, Lcom/applovin/impl/b/a$c;

    const-string v8, "ERROR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/applovin/impl/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/applovin/impl/b/a$c;->h:Lcom/applovin/impl/b/a$c;

    filled-new-array/range {v0 .. v7}, [Lcom/applovin/impl/b/a$c;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/b/a$c;->i:[Lcom/applovin/impl/b/a$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/b/a$c;
    .locals 1

    const-class v0, Lcom/applovin/impl/b/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/b/a$c;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/b/a$c;
    .locals 1

    sget-object v0, Lcom/applovin/impl/b/a$c;->i:[Lcom/applovin/impl/b/a$c;

    invoke-virtual {v0}, [Lcom/applovin/impl/b/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/b/a$c;

    return-object v0
.end method
