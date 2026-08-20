.class public enum Lcom/appodeal/ads/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/appodeal/ads/a;

.field public static final enum e:Lcom/appodeal/ads/a;

.field public static final enum f:Lcom/appodeal/ads/a$a;

.field public static final enum g:Lcom/appodeal/ads/a$b;

.field public static final enum h:Lcom/appodeal/ads/a;

.field public static final synthetic i:[Lcom/appodeal/ads/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/appodeal/ads/a;

    const/16 v4, 0x51

    const/16 v5, 0x51

    .line 1
    const-string v1, "BOTTOM"

    const/4 v2, 0x0

    const-string v3, "bottom"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 2
    sput-object v6, Lcom/appodeal/ads/a;->d:Lcom/appodeal/ads/a;

    new-instance v0, Lcom/appodeal/ads/a;

    const/16 v11, 0x31

    const/16 v12, 0x31

    .line 3
    const-string v8, "TOP"

    const/4 v9, 0x1

    const-string v10, "top"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/appodeal/ads/a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 4
    sput-object v0, Lcom/appodeal/ads/a;->e:Lcom/appodeal/ads/a;

    new-instance v1, Lcom/appodeal/ads/a$a;

    invoke-direct {v1}, Lcom/appodeal/ads/a$a;-><init>()V

    sput-object v1, Lcom/appodeal/ads/a;->f:Lcom/appodeal/ads/a$a;

    new-instance v2, Lcom/appodeal/ads/a$b;

    invoke-direct {v2}, Lcom/appodeal/ads/a$b;-><init>()V

    sput-object v2, Lcom/appodeal/ads/a;->g:Lcom/appodeal/ads/a$b;

    new-instance v3, Lcom/appodeal/ads/a;

    const/16 v11, 0x11

    const/16 v12, 0x11

    .line 5
    const-string v8, "VIEW"

    const/4 v9, 0x4

    const-string v10, "bannerview"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/appodeal/ads/a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 6
    sput-object v3, Lcom/appodeal/ads/a;->h:Lcom/appodeal/ads/a;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/appodeal/ads/a;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lcom/appodeal/ads/a;->i:[Lcom/appodeal/ads/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6

    const/16 v4, 0x11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appodeal/ads/a;->a:Ljava/lang/String;

    iput p4, p0, Lcom/appodeal/ads/a;->b:I

    iput p5, p0, Lcom/appodeal/ads/a;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/a;
    .locals 1

    const-class v0, Lcom/appodeal/ads/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/a;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/a;->i:[Lcom/appodeal/ads/a;

    invoke-virtual {v0}, [Lcom/appodeal/ads/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
