plugins {
    id 'scala'
    id 'io.quarkus'
}

repositories {
     mavenLocal()
     mavenCentral()
}

dependencies {
    implementation enforcedPlatform("${quarkusPlatformGroupId}:${quarkusPlatformArtifactId}:${quarkusPlatformVersion}")
    implementation 'org.scala-lang:scala-library:${scala_version}'
    implementation 'io.quarkus:quarkus-resteasy'

    testImplementation 'io.quarkus:quarkus-junit5'
    testImplementation 'io.rest-assured:rest-assured'
}

group '${project_groupId}'
version '${project_version}'

compileScala {
    scalaCompileOptions.encoding = 'UTF-8'
    sourceCompatibility = JavaVersion.VERSION_${java_target}
    targetCompatibility = JavaVersion.VERSION_${java_target}
}

java {
    sourceCompatibility = JavaVersion.VERSION_${java_target}
    targetCompatibility = JavaVersion.VERSION_${java_target}
}
