import os
import imageio.v2 as imageio

# Set the directory containing your image files
input_folder = '/workspaces/ClimateChangeR/Images'

# Set the output file name
output_file = 'output_animation.gif'

# Set the frame rate (in seconds per frame)
frame_rate = 0.2  # Change this value to adjust frame rate

# Get the list of image files in the folder
image_files = sorted([os.path.join(input_folder, file) for file in os.listdir(input_folder) if file.endswith('.png') or file.endswith('.jpg')])

# Create the animation
images = []
for file_name in image_files:
    images.append(imageio.imread(file_name))

# Save the animation
imageio.mimsave(output_file, images, duration=frame_rate)
