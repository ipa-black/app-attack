.class public final synthetic Lcom/google/android/gms/internal/ads/zzepk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzepl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfix;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfil;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzekt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzepl;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zza:Lcom/google/android/gms/internal/ads/zzepl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzb:Lcom/google/android/gms/internal/ads/zzfix;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzc:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzd:Lcom/google/android/gms/internal/ads/zzekt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zza:Lcom/google/android/gms/internal/ads/zzepl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzb:Lcom/google/android/gms/internal/ads/zzfix;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzc:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzd:Lcom/google/android/gms/internal/ads/zzekt;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzepl;->zzd:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzepn;->zzd(Lcom/google/android/gms/internal/ads/zzepn;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;)V

    return-void
.end method
