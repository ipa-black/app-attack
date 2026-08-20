.class public final synthetic Lcom/google/android/gms/internal/ads/zzeon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdy;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeoo;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfil;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfix;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzekq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeoo;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzekq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeon;->zza:Lcom/google/android/gms/internal/ads/zzeoo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeon;->zzb:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeon;->zzc:Lcom/google/android/gms/internal/ads/zzfix;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeon;->zzd:Lcom/google/android/gms/internal/ads/zzekq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeon;->zza:Lcom/google/android/gms/internal/ads/zzeoo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeon;->zzb:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeon;->zzc:Lcom/google/android/gms/internal/ads/zzfix;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeon;->zzd:Lcom/google/android/gms/internal/ads/zzekq;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeoo;->zzb(Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzekq;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method
