.class final enum Lio/bidmachine/RegisterSource;
.super Ljava/lang/Enum;
.source "RegisterSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/RegisterSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/RegisterSource;

.field public static final enum Init:Lio/bidmachine/RegisterSource;

.field public static final enum Publisher:Lio/bidmachine/RegisterSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lio/bidmachine/RegisterSource;

    const-string v1, "Publisher"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/RegisterSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/RegisterSource;->Publisher:Lio/bidmachine/RegisterSource;

    new-instance v1, Lio/bidmachine/RegisterSource;

    const-string v2, "Init"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/bidmachine/RegisterSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/RegisterSource;->Init:Lio/bidmachine/RegisterSource;

    .line 3
    filled-new-array {v0, v1}, [Lio/bidmachine/RegisterSource;

    move-result-object v0

    sput-object v0, Lio/bidmachine/RegisterSource;->$VALUES:[Lio/bidmachine/RegisterSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/RegisterSource;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/RegisterSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/RegisterSource;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/RegisterSource;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/RegisterSource;->$VALUES:[Lio/bidmachine/RegisterSource;

    invoke-virtual {v0}, [Lio/bidmachine/RegisterSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/RegisterSource;

    return-object v0
.end method
