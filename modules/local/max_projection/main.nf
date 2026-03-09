pythonScript = "${workflow.projectDir}/bin/max_projection.py"

process MAX_PROJECTION {
    label 'process_high_memory'
    container "ghcr.io/schapirolabor/background_subtraction:v0.5.1"

    input:
    tuple val(meta), path(image)
    val channel_string
    //tuple val(meta2), path(channelfile)

    output:
    tuple val(meta), path("*.tif*"), emit: max_proj_img

    script:
    """
    python ${pythonScript} --input_path $image --channels $channel_string
    """
}
